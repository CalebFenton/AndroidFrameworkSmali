.class final Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockedUpdater"
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

    .line 529
    invoke-static {}, Ljdk/internal/misc/Unsafe;->getUnsafe()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

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

    .line 541
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    .line 554
    :try_start_3
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 555
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    .line 556
    .local v1, "modifiers":I
    const/4 v2, 0x0

    invoke-static {p3, p1, v2, v1}, Lsun/reflect/misc/ReflectUtil;->ensureMemberAccess(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_50

    .line 574
    nop

    .line 576
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v2, v3, :cond_48

    .line 579
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 589
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 590
    invoke-virtual {p1, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 591
    invoke-static {p1, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_32

    .line 592
    move-object v2, p3

    goto :goto_33

    :cond_32
    move-object v2, p1

    :goto_33
    iput-object v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    .line 593
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    .line 594
    sget-object v2, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

    invoke-virtual {v2, v0}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    .line 595
    return-void

    .line 580
    :cond_40
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be volatile type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 577
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must be long type"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 572
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "modifiers":I
    :catch_50
    move-exception v0

    .line 573
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

    .line 602
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 604
    return-void

    .line 603
    :cond_9
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->accessCheckException(Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private final greylist-max-o accessCheckException(Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/RuntimeException;"
        }
    .end annotation

    .line 611
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    if-ne v0, v1, :cond_c

    .line 612
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    return-object v0

    .line 614
    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    .line 617
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " can not access a protected member of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    .line 619
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " using an instance of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 621
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

    .line 614
    return-object v0
.end method


# virtual methods
.method public final whitelist test-api compareAndSet(Ljava/lang/Object;JJ)Z
    .registers 14
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .line 625
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 626
    monitor-enter p0

    .line 627
    :try_start_4
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_23

    .line 628
    .local v0, "v":J
    cmp-long v2, v0, p2

    if-eqz v2, :cond_17

    .line 629
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_13

    const/4 v2, 0x0

    return v2

    .line 632
    .end local v0    # "v":J
    :catchall_13
    move-exception v0

    move-object v3, p1

    move-wide v6, p4

    goto :goto_26

    .line 630
    .restart local v0    # "v":J
    :cond_17
    :try_start_17
    sget-object v2, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v4, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_23

    move-object v3, p1

    move-wide v6, p4

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p4    # "update":J
    .local v3, "obj":Ljava/lang/Object;, "TT;"
    .local v6, "update":J
    :try_start_1d
    invoke-virtual/range {v2 .. v7}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 631
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 632
    .end local v0    # "v":J
    .end local v3    # "obj":Ljava/lang/Object;, "TT;"
    .end local v6    # "update":J
    .restart local p1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local p4    # "update":J
    :catchall_23
    move-exception v0

    move-object v3, p1

    move-wide v6, p4

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p4    # "update":J
    .restart local v3    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v6    # "update":J
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_28

    throw v0

    :catchall_28
    move-exception v0

    goto :goto_26
.end method

.method public final whitelist test-api get(Ljava/lang/Object;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 651
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 652
    monitor-enter p0

    .line 653
    :try_start_4
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    invoke-virtual {v0, p1, v1, v2}, Ljdk/internal/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    .line 654
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public final whitelist test-api lazySet(Ljava/lang/Object;J)V
    .registers 4
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 647
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->set(Ljava/lang/Object;J)V

    .line 648
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

    .line 640
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->accessCheck(Ljava/lang/Object;)V

    .line 641
    monitor-enter p0

    .line 642
    :try_start_4
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->U:Ljdk/internal/misc/Unsafe;

    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_f

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "newValue":J
    :try_start_a
    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    .line 643
    monitor-exit p0

    .line 644
    return-void

    .line 643
    .end local v1    # "obj":Ljava/lang/Object;, "TT;"
    .end local v4    # "newValue":J
    .restart local p1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local p2    # "newValue":J
    :catchall_f
    move-exception v0

    move-object v1, p1

    move-wide v4, p2

    move-object p1, v0

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .restart local v1    # "obj":Ljava/lang/Object;, "TT;"
    .restart local v4    # "newValue":J
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_15

    throw p1

    :catchall_15
    move-exception v0

    move-object p1, v0

    goto :goto_13
.end method

.method public final whitelist test-api weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .registers 7
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    .line 636
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method
