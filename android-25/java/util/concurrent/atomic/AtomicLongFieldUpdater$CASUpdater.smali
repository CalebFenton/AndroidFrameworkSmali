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
        "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final U:Lsun/misc/Unsafe;


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
    .line 341
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@6
    .line 340
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 351
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    #@3
    .line 356
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v1

    #@7
    .line 357
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    move-result v2

    #@b
    .line 376
    .local v2, "modifiers":I
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@11
    if-eq v3, v4, :cond_0

    #@13
    .line 377
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v4, "Must be long type"

    #@18
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v3

    #@1c
    .line 372
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    :catch_0
    move-exception v0

    #@1d
    .line 373
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@1f
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@22
    throw v3

    #@23
    .line 379
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "modifiers":I
    :cond_0
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@26
    move-result v3

    #@27
    if-nez v3, :cond_1

    #@29
    .line 380
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2b
    const-string/jumbo v4, "Must be volatile type"

    #@2e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@31
    throw v3

    #@32
    .line 382
    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@35
    move-result v3

    #@36
    if-eqz v3, :cond_2

    #@38
    .end local p3    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@3a
    .line 383
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@3c
    .line 384
    sget-object v3, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@3e
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@41
    move-result-wide v4

    #@42
    iput-wide v4, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@44
    .line 352
    return-void

    #@45
    .restart local p3    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object p3, p1

    #@46
    .line 382
    goto :goto_0
.end method

.method private final accessCheck(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 393
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->throwAccessCheckException(Ljava/lang/Object;)V

    #@b
    .line 391
    :cond_0
    return-void
.end method

.method private final throwAccessCheckException(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 401
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 402
    new-instance v0, Ljava/lang/ClassCastException;

    #@8
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@b
    throw v0

    #@c
    .line 404
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    .line 405
    new-instance v1, Ljava/lang/IllegalAccessException;

    #@10
    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Class "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    .line 407
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 408
    const-string/jumbo v3, " can not access a protected member of class "

    #@29
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 409
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@2f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 410
    const-string/jumbo v3, " using an instance of "

    #@3a
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 411
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 406
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 405
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@51
    .line 404
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v0
.end method


# virtual methods
.method public final addAndGet(Ljava/lang/Object;J)J
    .locals 2
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 466
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    #@3
    move-result-wide v0

    #@4
    add-long/2addr v0, p2

    #@5
    return-wide v0
.end method

.method public final compareAndSet(Ljava/lang/Object;JJ)Z
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
    .line 415
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 416
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    move-wide v6, p4

    #@a
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public final decrementAndGet(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 462
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    #@5
    move-result-wide v0

    #@6
    const-wide/16 v2, 0x1

    #@8
    sub-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public final get(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 435
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 436
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public final getAndAdd(Ljava/lang/Object;J)J
    .locals 6
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 445
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 446
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndAddLong(Ljava/lang/Object;JJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final getAndDecrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 454
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, -0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getAndIncrement(Ljava/lang/Object;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v0, 0x1

    #@2
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public final getAndSet(Ljava/lang/Object;J)J
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 440
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 441
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->getAndSetLong(Ljava/lang/Object;JJ)J

    #@c
    move-result-wide v0

    #@d
    return-wide v0
.end method

.method public final incrementAndGet(Ljava/lang/Object;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const-wide/16 v2, 0x1

    #@2
    .line 458
    invoke-virtual {p0, p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->getAndAdd(Ljava/lang/Object;J)J

    #@5
    move-result-wide v0

    #@6
    add-long/2addr v0, v2

    #@7
    return-wide v0
.end method

.method public final lazySet(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 430
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 431
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    #@c
    .line 429
    return-void
.end method

.method public final set(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 425
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 426
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@c
    .line 424
    return-void
.end method

.method public final weakCompareAndSet(Ljava/lang/Object;JJ)Z
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
    .line 420
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 421
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@7
    move-object v1, p1

    #@8
    move-wide v4, p2

    #@9
    move-wide v6, p4

    #@a
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@d
    move-result v0

    #@e
    return v0
.end method
