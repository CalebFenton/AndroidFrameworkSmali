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
        "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater",
        "<TT;TV;>;"
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

.field private final vclass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 259
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@6
    .line 257
    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 6
    .param p3, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 283
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "vclass":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    .local p4, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;-><init>()V

    #@3
    .line 291
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v1

    #@7
    .line 292
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    #@a
    move-result v3

    #@b
    .line 303
    .local v3, "modifiers":I
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v2

    #@f
    .line 312
    .local v2, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p2, v2, :cond_0

    #@11
    .line 313
    new-instance v4, Ljava/lang/ClassCastException;

    #@13
    invoke-direct {v4}, Ljava/lang/ClassCastException;-><init>()V

    #@16
    throw v4

    #@17
    .line 308
    .end local v1    # "field":Ljava/lang/reflect/Field;
    .end local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "modifiers":I
    :catch_0
    move-exception v0

    #@18
    .line 309
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    #@1a
    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@1d
    throw v4

    #@1e
    .line 314
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    .restart local v2    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "modifiers":I
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    #@21
    move-result v4

    #@22
    if-eqz v4, :cond_1

    #@24
    .line 315
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@26
    const-string/jumbo v5, "Must be reference type"

    #@29
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c
    throw v4

    #@2d
    .line 317
    :cond_1
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@30
    move-result v4

    #@31
    if-nez v4, :cond_2

    #@33
    .line 318
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v5, "Must be volatile type"

    #@38
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v4

    #@3c
    .line 320
    :cond_2
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_3

    #@42
    .end local p4    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object p4, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@44
    .line 321
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@46
    .line 322
    iput-object p2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@48
    .line 323
    sget-object v4, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@4a
    invoke-virtual {v4, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@4d
    move-result-wide v4

    #@4e
    iput-wide v4, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@50
    .line 286
    return-void

    #@51
    .restart local p4    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    move-object p4, p1

    #@52
    .line 320
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
    .line 349
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 350
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->throwAccessCheckException(Ljava/lang/Object;)V

    #@b
    .line 348
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
    .line 358
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@2
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 359
    new-instance v0, Ljava/lang/ClassCastException;

    #@8
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@b
    throw v0

    #@c
    .line 361
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@e
    .line 362
    new-instance v1, Ljava/lang/IllegalAccessException;

    #@10
    .line 363
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
    .line 364
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->cclass:Ljava/lang/Class;

    #@1e
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@21
    move-result-object v3

    #@22
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v2

    #@26
    .line 365
    const-string/jumbo v3, " can not access a protected member of class "

    #@29
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 366
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->tclass:Ljava/lang/Class;

    #@2f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@32
    move-result-object v3

    #@33
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    .line 367
    const-string/jumbo v3, " using an instance of "

    #@3a
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@41
    move-result-object v3

    #@42
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@45
    move-result-object v3

    #@46
    .line 363
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    .line 362
    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    #@51
    .line 361
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@54
    throw v0
.end method

.method static throwCCE()V
    .locals 1

    #@0
    .prologue
    .line 377
    new-instance v0, Ljava/lang/ClassCastException;

    #@2
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@5
    throw v0
.end method

.method private final valueCheck(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 372
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->vclass:Ljava/lang/Class;

    #@4
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 371
    :cond_0
    :goto_0
    return-void

    #@b
    .line 373
    :cond_1
    invoke-static {}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->throwCCE()V

    #@e
    goto :goto_0
.end method


# virtual methods
.method public final compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 381
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 382
    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    #@6
    .line 383
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@8
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@a
    move-object v1, p1

    #@b
    move-object v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 408
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@5
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@7
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getObjectVolatile(Ljava/lang/Object;J)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public final getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 413
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 414
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    #@6
    .line 415
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@8
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@a
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->getAndSetObject(Ljava/lang/Object;JLjava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public final lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 400
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 401
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    #@6
    .line 402
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@8
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@a
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putOrderedObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@d
    .line 399
    return-void
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 394
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 395
    invoke-direct {p0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    #@6
    .line 396
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@8
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@a
    invoke-virtual {v0, p1, v2, v3, p2}, Lsun/misc/Unsafe;->putObjectVolatile(Ljava/lang/Object;JLjava/lang/Object;)V

    #@d
    .line 393
    return-void
.end method

.method public final weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 388
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>.AtomicReferenceFieldUpdaterImpl<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "expect":Ljava/lang/Object;, "TV;"
    .local p3, "update":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->accessCheck(Ljava/lang/Object;)V

    #@3
    .line 389
    invoke-direct {p0, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->valueCheck(Ljava/lang/Object;)V

    #@6
    .line 390
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->U:Lsun/misc/Unsafe;

    #@8
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;->offset:J

    #@a
    move-object v1, p1

    #@b
    move-object v4, p2

    #@c
    move-object v5, p3

    #@d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    return v0
.end method
