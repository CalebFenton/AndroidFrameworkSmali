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
        "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
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
    .line 342
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

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
    .line 352
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;-><init>()V

    #@3
    .line 359
    :try_start_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1;

    #@5
    invoke-direct {v3, p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl$1;-><init>(Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;Ljava/lang/Class;Ljava/lang/String;)V

    #@8
    .line 358
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Ljava/lang/reflect/Field;

    #@e
    .line 364
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v2

    #@12
    .line 383
    .local v2, "modifiers":I
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@15
    move-result-object v3

    #@16
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@18
    if-eq v3, v4, :cond_0

    #@1a
    .line 384
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1c
    const-string/jumbo v4, "Must be integer type"

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 379
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "modifiers":I
    :catch_0
    move-exception v0

    #@24
    .line 380
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    #@26
    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@29
    throw v3

    #@2a
    .line 386
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "modifiers":I
    :cond_0
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@2d
    move-result v3

    #@2e
    if-nez v3, :cond_1

    #@30
    .line 387
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@32
    const-string/jumbo v4, "Must be volatile type"

    #@35
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v3

    #@39
    .line 389
    :cond_1
    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .end local p3    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p3, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@41
    .line 390
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@43
    .line 391
    sget-object v3, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@45
    invoke-virtual {v3, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@48
    move-result-wide v4

    #@49
    iput-wide v4, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@4b
    .line 354
    return-void

    #@4c
    .restart local p3    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object p3, p1

    #@4d
    .line 389
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
    .line 417
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 418
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->throwAccessCheckException(Ljava/lang/Object;)V

    #@b
    .line 416
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
    .line 426
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 427
    new-instance v0, Ljava/lang/ClassCastException;

    #@8
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@b
    throw v0

    #@c
    .line 429
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    .line 430
    new-instance v1, Ljava/lang/IllegalAccessException;

    #@10
    .line 431
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
    .line 432
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 433
    const-string/jumbo v3, " can not access a protected member of class "

    #@29
    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 434
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@2f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 435
    const-string/jumbo v3, " using an instance of "

    #@3a
    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 436
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 430
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@51
    .line 429
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v0
.end method


# virtual methods
.method public final addAndGet(Ljava/lang/Object;I)I
    .locals 1
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 491
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    #@3
    move-result v0

    #@4
    add-int/2addr v0, p2

    #@5
    return v0
.end method

.method public final compareAndSet(Ljava/lang/Object;II)Z
    .locals 6
    .param p2, "expect"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 440
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 441
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    move-object v1, p1

    #@8
    move v4, p2

    #@9
    move v5, p3

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public final decrementAndGet(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 487
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, -0x1

    #@7
    return v0
.end method

.method public final get(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 460
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 461
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getIntVolatile(Ljava/lang/Object;J)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final getAndAdd(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 470
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 471
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final getAndDecrement(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 479
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, -0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getAndIncrement(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 475
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getAndSet(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 465
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 466
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetInt(Ljava/lang/Object;JI)I

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public final incrementAndGet(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 483
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->getAndAdd(Ljava/lang/Object;I)I

    #@4
    move-result v0

    #@5
    add-int/lit8 v0, v0, 0x1

    #@7
    return v0
.end method

.method public final lazySet(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 455
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 456
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedInt(Ljava/lang/Object;JI)V

    #@a
    .line 454
    return-void
.end method

.method public final set(Ljava/lang/Object;I)V
    .locals 4
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 451
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putIntVolatile(Ljava/lang/Object;JI)V

    #@a
    .line 449
    return-void
.end method

.method public final weakCompareAndSet(Ljava/lang/Object;II)Z
    .locals 6
    .param p2, "expect"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 445
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>.AtomicIntegerFieldUpdaterImpl<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 446
    sget-object v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;->offset:J

    #@7
    move-object v1, p1

    #@8
    move v4, p2

    #@9
    move v5, p3

    #@a
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@d
    move-result v0

    #@e
    return v0
.end method
