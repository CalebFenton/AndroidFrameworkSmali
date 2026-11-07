.class final Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CASUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final blacklist U:Ljdk/internal/misc/Unsafe;


# instance fields
.field private final greylist-max-o cclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o offset:J

.field private final greylist-max-o tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 377
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 8
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 389
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    .line 402
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 403
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 404
    .local v1, "modifiers":I
    const/4 v2, 0x0

    invoke-static {p3, p1, v2, v1}, Lsun/reflect/misc/ReflectUtil;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_50

    .line 422
    nop

    .line 424
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_48

    .line 427
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 437
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 438
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 439
    invoke-static {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 440
    move-object v2, p3

    goto :goto_33

    :cond_32
    move-object v2, p1

    :goto_33
    iput-object v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    .line 441
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    .line 442
    sget-object v2, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    .line 443
    return-void

    .line 428
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be volatile type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be long type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :catch_50
    move-exception v0

    .line 421
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o accessCheck(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 450
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 451
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->throwAccessCheckException(Ljava/lang/Object;)V

    .line 452
    :cond_b
    return-void
.end method

.method private final greylist-max-o throwAccessCheckException(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 459
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 460
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 462
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    .line 465
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    .line 467
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 469
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api addAndGet(Ljava/lang/Object;J)J
    .registers 6
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 524
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    add-long/2addr v0, p2

    return-wide v0
.end method

.method public final whitelist test-api compareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .line 473
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 474
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":J
    .end local p4    # "update":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":J
    .local v6, "update":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api decrementAndGet(Ljava/lang/Object;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 520
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist test-api get(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 493
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 494
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndAdd(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 503
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 504
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "delta":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "delta":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api getAndDecrement(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 512
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndIncrement(Ljava/lang/Object;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 508
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist test-api getAndSet(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 498
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 499
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "newValue":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final whitelist test-api incrementAndGet(Ljava/lang/Object;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 516
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final whitelist test-api lazySet(Ljava/lang/Object;J)V
    .registers 10
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 488
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 489
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "newValue":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLongRelease(Ljava/lang/Object;JJ)V

    .line 490
    return-void
.end method

.method public final whitelist test-api set(Ljava/lang/Object;J)V
    .registers 10
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 483
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 484
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "newValue":J
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    .line 485
    return-void
.end method

.method public final whitelist test-api weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .line 478
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 479
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":J
    .end local p4    # "update":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":J
    .local v6, "update":J
    invoke-virtual/range {v0 .. v7}, Ljdk/internal/misc/Unsafe;->compareAndSetLong(Ljava/lang/Object;JJJ)Z

    move-result p1

    return p1
.end method
