.class Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockedUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final unsafe:Lsun/misc/Unsafe;


# instance fields
.field private final cclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final offset:J

.field private final tclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 335
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 334
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 8
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 340
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    #@3
    .line 341
    const/4 v2, 0x0

    #@4
    .line 342
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v0, 0x0

    #@5
    .line 343
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    #@6
    .line 345
    .local v4, "modifiers":I
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@9
    move-result-object v2

    #@a
    .line 346
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 347
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v4

    #@12
    .line 366
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    .line 367
    .local v3, "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@18
    if-eq v3, v5, :cond_0

    #@1a
    .line 368
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v6, "Must be long type"

    #@1f
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v5

    #@23
    .line 362
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@24
    .line 363
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    #@26
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v5

    #@2a
    .line 370
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_1

    #@30
    .line 371
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v6, "Must be volatile type"

    #@35
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v5

    #@39
    .line 373
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@3c
    move-result v5

    #@3d
    if-eqz v5, :cond_2

    #@3f
    .line 374
    if-eq v0, p1, :cond_2

    #@41
    .line 373
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@43
    .line 375
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@45
    .line 376
    sget-object v5, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@47
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4a
    move-result-wide v6

    #@4b
    iput-wide v6, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    #@4d
    .line 340
    return-void

    #@4e
    .line 374
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    #@4f
    goto :goto_0
.end method

.method private ensureProtectedAccess(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 420
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 421
    return-void

    #@9
    .line 423
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    .line 424
    new-instance v1, Ljava/lang/IllegalAccessException;

    #@d
    new-instance v2, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v3, "Class "

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    .line 425
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 426
    const-string/jumbo v3, " can not access a protected member of class "

    #@26
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 427
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 428
    const-string/jumbo v3, " using an instance of "

    #@37
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 429
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@4e
    .line 423
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@51
    throw v0
.end method

.method private fullCheck(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 380
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 381
    new-instance v0, Ljava/lang/ClassCastException;

    #@a
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@d
    throw v0

    #@e
    .line 382
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 383
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->ensureProtectedAccess(Ljava/lang/Object;)V

    #@15
    .line 379
    :cond_1
    return-void
.end method


# virtual methods
.method public compareAndSet(Ljava/lang/Object;JJ)Z
    .locals 8
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 387
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 388
    :cond_1
    monitor-enter p0

    #@e
    .line 389
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@10
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    #@12
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-wide v6

    #@16
    .line 390
    .local v6, "v":J
    cmp-long v0, v6, p2

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 391
    const/4 v0, 0x0

    #@1b
    monitor-exit p0

    #@1c
    return v0

    #@1d
    .line 387
    .end local v6    # "v":J
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@1f
    if-eqz v0, :cond_1

    #@21
    goto :goto_0

    #@22
    .line 392
    .restart local v6    # "v":J
    :cond_3
    :try_start_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@24
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    #@26
    move-object v1, p1

    #@27
    move-wide v4, p4

    #@28
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    .line 393
    const/4 v0, 0x1

    #@2c
    monitor-exit p0

    #@2d
    return v0

    #@2e
    .line 388
    .end local v6    # "v":J
    :catchall_0
    move-exception v0

    #@2f
    monitor-exit p0

    #@30
    throw v0
.end method

.method public get(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 414
    :cond_1
    monitor-enter p0

    #@e
    .line 415
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@10
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    #@12
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    move-result-wide v0

    #@16
    monitor-exit p0

    #@17
    return-wide v0

    #@18
    .line 413
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@1a
    if-eqz v0, :cond_1

    #@1c
    goto :goto_0

    #@1d
    .line 414
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public lazySet(Ljava/lang/Object;J)V
    .locals 0
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 409
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->set(Ljava/lang/Object;J)V

    #@3
    .line 408
    return-void
.end method

.method public set(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 402
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 403
    :cond_1
    monitor-enter p0

    #@e
    .line 404
    :try_start_0
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->unsafe:Lsun/misc/Unsafe;

    #@10
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->offset:J

    #@12
    move-object v1, p1

    #@13
    move-wide v4, p2

    #@14
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 401
    return-void

    #@19
    .line 402
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->cclass:Ljava/lang/Class;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    goto :goto_0

    #@1e
    .line 403
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit p0

    #@20
    throw v0
.end method

.method public weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .locals 2
    .param p2, "expect"    # J
    .param p4, "update"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 398
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.LockedUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {p0 .. p5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
