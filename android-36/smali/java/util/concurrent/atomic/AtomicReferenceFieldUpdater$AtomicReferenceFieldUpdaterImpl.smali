.class final Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;
.super Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.source "AtomicReferenceFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AtomicReferenceFieldUpdaterImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
        "TT;TV;>;"
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

.field private final greylist-max-o vclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 299
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 10
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 327
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "vclass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .local p4, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;-><init>()V

    .line 341
    :try_start_3
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 342
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 343
    .local v1, "modifiers":I
    const/4 v2, 0x0

    invoke-static {p4, p1, v2, v1}, Lsun/reflect/misc/ReflectUtil;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V

    .line 354
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_5c

    .line 362
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 364
    if-ne p2, v2, :cond_56

    .line 366
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 369
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v3

    if-eqz v3, :cond_46

    .line 379
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 380
    invoke-virtual {p1, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 381
    invoke-static {p1, p4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_36

    .line 382
    move-object v3, p4

    goto :goto_37

    :cond_36
    move-object v3, p1

    :goto_37
    iput-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    .line 383
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    .line 384
    iput-object p2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    .line 385
    sget-object v3, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v3, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v3

    iput-wide v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    .line 386
    return-void

    .line 370
    :cond_46
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must be volatile type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    :cond_4e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Must be reference type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 365
    :cond_56
    new-instance v3, Ljava/lang/ClassCastException;

    invoke-direct {v3}, Ljava/lang/ClassCastException;-><init>()V

    throw v3

    .line 360
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_5c
    move-exception v0

    .line 361
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

    .line 421
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 422
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->throwAccessCheckException(Ljava/lang/Object;)V

    .line 423
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

    .line 412
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_16

    .line 413
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 412
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

    .line 430
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 431
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 433
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    .line 436
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    .line 438
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 440
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

.method static greylist-max-o throwCCE()V
    .registers 1

    .line 449
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method private final greylist-max-o valueCheck(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 444
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_d

    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 445
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->throwCCE()V

    .line 446
    :cond_d
    return-void
.end method


# virtual methods
.method public final whitelist test-api compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    .line 453
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 454
    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    .line 455
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":Ljava/lang/Object;, "TV;"
    .end local p3    # "update":Ljava/lang/Object;, "TV;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":Ljava/lang/Object;, "TV;"
    .local v5, "update":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    .line 479
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 480
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getReferenceVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TV;"
        }
    .end annotation

    .line 485
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 486
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    .line 487
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->getAndSetReference(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 472
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 473
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    .line 474
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putReferenceRelease(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 475
    return-void
.end method

.method public final whitelist test-api set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .line 466
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 467
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    .line 468
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    invoke-virtual {v0, p1, v1, v2, p2}, Ljdk/internal/misc/Unsafe;->putReferenceVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 469
    return-void
.end method

.method public final whitelist test-api weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    .line 460
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    .line 461
    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    .line 462
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "expect":Ljava/lang/Object;, "TV;"
    .end local p3    # "update":Ljava/lang/Object;, "TV;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "expect":Ljava/lang/Object;, "TV;"
    .local v5, "update":Ljava/lang/Object;, "TV;"
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
