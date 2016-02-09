.class Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
.super Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
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
    .line 241
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@6
    .line 240
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
    .line 246
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;-><init>()V

    #@3
    .line 251
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@6
    move-result-object v2

    #@7
    .line 252
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass2()Ljava/lang/Class;

    #@a
    move-result-object v0

    #@b
    .line 253
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v4

    #@f
    .line 272
    .local v4, "modifiers":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    #@12
    move-result-object v3

    #@13
    .line 273
    .local v3, "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@15
    if-eq v3, v5, :cond_0

    #@17
    .line 274
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@19
    const-string/jumbo v6, "Must be long type"

    #@1c
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v5

    #@20
    .line 268
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "modifiers":I
    :catch_0
    move-exception v1

    #@21
    .line 269
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    #@23
    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@26
    throw v5

    #@27
    .line 276
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    .restart local v3    # "fieldt":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "modifiers":I
    :cond_0
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isVolatile(I)Z

    #@2a
    move-result v5

    #@2b
    if-nez v5, :cond_1

    #@2d
    .line 277
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@2f
    const-string/jumbo v6, "Must be volatile type"

    #@32
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@35
    throw v5

    #@36
    .line 279
    :cond_1
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    #@39
    move-result v5

    #@3a
    if-eqz v5, :cond_2

    #@3c
    .line 280
    if-eq v0, p1, :cond_2

    #@3e
    .line 279
    .end local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@40
    .line 281
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@42
    .line 282
    sget-object v5, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@44
    invoke-virtual {v5, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@47
    move-result-wide v6

    #@48
    iput-wide v6, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@4a
    .line 246
    return-void

    #@4b
    .line 280
    .restart local v0    # "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v0, 0x0

    #@4c
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
    .line 318
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 319
    return-void

    #@9
    .line 321
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@b
    .line 322
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
    .line 323
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@1b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    .line 324
    const-string/jumbo v3, " can not access a protected member of class "

    #@26
    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    .line 325
    iget-object v3, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@2c
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v3

    #@30
    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 326
    const-string/jumbo v3, " using an instance of "

    #@37
    .line 322
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v2

    #@3b
    .line 327
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 322
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
    .line 321
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
    .line 286
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 287
    new-instance v0, Ljava/lang/ClassCastException;

    #@a
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    #@d
    throw v0

    #@e
    .line 288
    :cond_0
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 289
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->ensureProtectedAccess(Ljava/lang/Object;)V

    #@15
    .line 285
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
    .line 293
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 294
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-wide v4, p2

    #@13
    move-wide v6, p4

    #@14
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 293
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    goto :goto_0
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
    .line 313
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 314
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@11
    invoke-virtual {v0, p1, v2, v3}, Lsun/misc/Unsafe;->getLongVolatile(Ljava/lang/Object;J)J

    #@14
    move-result-wide v0

    #@15
    return-wide v0

    #@16
    .line 313
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@18
    if-eqz v0, :cond_1

    #@1a
    goto :goto_0
.end method

.method public lazySet(Ljava/lang/Object;J)V
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 308
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 309
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-wide v4, p2

    #@13
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putOrderedLong(Ljava/lang/Object;JJ)V

    #@16
    .line 307
    return-void

    #@17
    .line 308
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@19
    if-eqz v0, :cond_1

    #@1b
    goto :goto_0
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
    .line 303
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 304
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-wide v4, p2

    #@13
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLongVolatile(Ljava/lang/Object;JJ)V

    #@16
    .line 302
    return-void

    #@17
    .line 303
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@19
    if-eqz v0, :cond_1

    #@1b
    goto :goto_0
.end method

.method public weakCompareAndSet(Ljava/lang/Object;JJ)Z
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
    .line 298
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>.CASUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    #@2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->tclass:Ljava/lang/Class;

    #@8
    if-eq v0, v1, :cond_2

    #@a
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->fullCheck(Ljava/lang/Object;)V

    #@d
    .line 299
    :cond_1
    sget-object v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->unsafe:Lsun/misc/Unsafe;

    #@f
    iget-wide v2, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->offset:J

    #@11
    move-object v1, p1

    #@12
    move-wide v4, p2

    #@13
    move-wide v6, p4

    #@14
    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    #@17
    move-result v0

    #@18
    return v0

    #@19
    .line 298
    :cond_2
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;->cclass:Ljava/lang/Class;

    #@1b
    if-eqz v0, :cond_1

    #@1d
    goto :goto_0
.end method
