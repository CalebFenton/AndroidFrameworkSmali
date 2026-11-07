.class final Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;
.super Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
.source "AtomicIntegerFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicIntegerFieldUpdaterImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
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

    .line 378
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

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

    .line 391
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;-><init>()V

    .line 404
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 406
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 407
    .local v1, "modifiers":I
    const/4 v2, 0x0

    invoke-static {p3, p1, v2, v1}, Lsun/reflect/misc/ReflectUtil;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_50

    .line 427
    nop

    .line 429
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_48

    .line 432
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 442
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 443
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 444
    invoke-static {p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 445
    move-object v2, p3

    goto :goto_33

    :cond_32
    move-object v2, p1

    :goto_33
    iput-object v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    .line 446
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    .line 447
    sget-object v2, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    .line 448
    return-void

    .line 433
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be volatile type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 430
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be integer type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 425
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :catch_50
    move-exception v0

    .line 426
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

    .line 484
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 485
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->throwAccessCheckException(Ljava/lang/Object;)V

    .line 486
    :cond_b
    return-void
.end method

.method private static blacklist isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
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

    .line 475
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_16

    .line 476
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 475
    :goto_17
    return v0
.end method

.method private final greylist-max-o throwAccessCheckException(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 493
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 494
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 496
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    .line 499
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    .line 501
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 503
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
.method public final whitelist test-api addAndGet(Ljava/lang/Object;I)I
    .registers 4
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 558
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    add-int/2addr v0, p2

    return v0
.end method

.method public final whitelist test-api compareAndSet(Ljava/lang/Object;II)Z
    .registers 10
    .param p2, "expect"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 507
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 508
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    move-object v1, p1

    move v4, p2

    move v5, p3

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":I
    .end local p3    # "update":I
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":I
    .local v5, "update":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api decrementAndGet(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 554
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final whitelist test-api get(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 527
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 528
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndAdd(Ljava/lang/Object;I)I
    .registers 6
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 537
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 538
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndDecrement(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 546
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndIncrement(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 542
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api getAndSet(Ljava/lang/Object;I)I
    .registers 6
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 532
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 533
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    move-result v0

    return v0
.end method

.method public final whitelist test-api incrementAndGet(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 550
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final whitelist test-api lazySet(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 522
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 523
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putIntRelease(Ljava/lang/Object;JI)V

    .line 524
    return-void
.end method

.method public final whitelist test-api set(Ljava/lang/Object;I)V
    .registers 6
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 517
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 518
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    .line 519
    return-void
.end method

.method public final whitelist test-api weakCompareAndSet(Ljava/lang/Object;II)Z
    .registers 10
    .param p2, "expect"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    .line 512
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 513
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    move-object v1, p1

    move v4, p2

    move v5, p3

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":I
    .end local p3    # "update":I
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":I
    .local v5, "update":I
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result p1

    return p1
.end method
