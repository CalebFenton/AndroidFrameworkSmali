.class final Ljava/util/concurrent/SynchronousQueue$TransferStack;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferStack"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/SynchronousQueue$Transferer",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final DATA:I = 0x1

.field static final FULFILLING:I = 0x2

.field private static final HEAD:J

.field static final REQUEST:I

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 483
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    #@6
    .line 487
    :try_start_0
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    #@8
    .line 488
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;

    #@a
    const-string/jumbo v3, "head"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 487
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 184
    return-void

    #@18
    .line 489
    :catch_0
    move-exception v0

    #@19
    .line 490
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@1b
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@1e
    throw v1
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    #@3
    return-void
.end method

.method static isFulfilling(I)Z
    .locals 2
    .param p0, "m"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 202
    and-int/lit8 v1, p0, 0x2

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method static snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 0
    .param p0, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p1, "e"    # Ljava/lang/Object;
    .param p2, "next"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p3, "mode"    # I

    #@0
    .prologue
    .line 289
    if-nez p0, :cond_0

    #@2
    new-instance p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@4
    .end local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-direct {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;-><init>(Ljava/lang/Object;)V

    #@7
    .line 290
    .restart local p0    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_0
    iput p3, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    #@9
    .line 291
    iput-object p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@b
    .line 292
    return-object p0
.end method


# virtual methods
.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .locals 9
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J

    #@0
    .prologue
    .line 407
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    if-eqz p2, :cond_2

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v6

    #@6
    add-long v0, v6, p3

    #@8
    .line 408
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v4

    #@c
    .line 409
    .local v4, "w":Ljava/lang/Thread;
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_4

    #@12
    .line 410
    if-eqz p2, :cond_3

    #@14
    sget v3, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    #@16
    .line 413
    .local v3, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 414
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    #@1f
    .line 415
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->match:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@21
    .line 416
    .local v2, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_5

    #@23
    .line 417
    return-object v2

    #@24
    .line 407
    .end local v0    # "deadline":J
    .end local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "spins":I
    .end local v4    # "w":Ljava/lang/Thread;
    :cond_2
    const-wide/16 v0, 0x0

    #@26
    .restart local v0    # "deadline":J
    goto :goto_0

    #@27
    .line 410
    .restart local v4    # "w":Ljava/lang/Thread;
    :cond_3
    sget v3, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    #@29
    .restart local v3    # "spins":I
    goto :goto_1

    #@2a
    .line 411
    .end local v3    # "spins":I
    :cond_4
    const/4 v3, 0x0

    #@2b
    .restart local v3    # "spins":I
    goto :goto_1

    #@2c
    .line 418
    .restart local v2    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_5
    if-eqz p2, :cond_6

    #@2e
    .line 419
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v6

    #@32
    sub-long p3, v0, v6

    #@34
    .line 420
    const-wide/16 v6, 0x0

    #@36
    cmp-long v5, p3, v6

    #@38
    if-gtz v5, :cond_6

    #@3a
    .line 421
    invoke-virtual {p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryCancel()V

    #@3d
    goto :goto_1

    #@3e
    .line 425
    :cond_6
    if-lez v3, :cond_8

    #@40
    .line 426
    invoke-virtual {p0, p1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@43
    move-result v5

    #@44
    if-eqz v5, :cond_7

    #@46
    add-int/lit8 v3, v3, -0x1

    #@48
    goto :goto_1

    #@49
    :cond_7
    const/4 v3, 0x0

    #@4a
    goto :goto_1

    #@4b
    .line 427
    :cond_8
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    #@4d
    if-nez v5, :cond_9

    #@4f
    .line 428
    iput-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    #@51
    goto :goto_1

    #@52
    .line 429
    :cond_9
    if-nez p2, :cond_a

    #@54
    .line 430
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@57
    goto :goto_1

    #@58
    .line 431
    :cond_a
    const-wide/16 v6, 0x3e8

    #@5a
    cmp-long v5, p3, v6

    #@5c
    if-lez v5, :cond_0

    #@5e
    .line 432
    invoke-static {p0, p3, p4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@61
    goto :goto_1
.end method

.method casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@0
    .prologue
    .line 277
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 278
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferStack;->HEAD:J

    #@8
    move-object v1, p0

    #@9
    move-object v4, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    .line 277
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V
    .locals 4
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    const/4 v3, 0x0

    #@1
    .line 449
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@3
    .line 450
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->waiter:Ljava/lang/Thread;

    #@5
    .line 463
    iget-object v2, p1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@7
    .line 464
    .local v2, "past":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v2, :cond_0

    #@9
    invoke-virtual {v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 465
    iget-object v2, v2, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@11
    .line 469
    :cond_0
    :goto_0
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@13
    .local v1, "p":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v1, :cond_1

    #@15
    if-eq v1, v2, :cond_1

    #@17
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 470
    iget-object v3, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@1f
    invoke-virtual {p0, v1, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@22
    goto :goto_0

    #@23
    .line 473
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    #@25
    if-eq v1, v2, :cond_3

    #@27
    .line 474
    iget-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@29
    .line 475
    .local v0, "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_2

    #@2b
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_2

    #@31
    .line 476
    iget-object v3, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@33
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@36
    goto :goto_1

    #@37
    .line 478
    :cond_2
    move-object v1, v0

    #@38
    goto :goto_1

    #@39
    .line 448
    .end local v0    # "n":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_3
    return-void
.end method

.method shouldSpin(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z
    .locals 2
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@0
    .prologue
    .line 441
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@2
    .line 442
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eq v0, p1, :cond_0

    #@4
    if-nez v0, :cond_1

    #@6
    :cond_0
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_1
    iget v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    #@a
    invoke-static {v1}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    #@d
    move-result v1

    #@e
    goto :goto_0
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 9
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferStack;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferStack<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v8, 0x0

    #@1
    .line 321
    const/4 v4, 0x0

    #@2
    .line 322
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez p1, :cond_2

    #@4
    const/4 v3, 0x0

    #@5
    .line 325
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .local v3, "mode":I
    :cond_0
    :goto_0
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@7
    .line 326
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-eqz v0, :cond_1

    #@9
    iget v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    #@b
    if-ne v5, v3, :cond_8

    #@d
    .line 327
    :cond_1
    if-eqz p2, :cond_4

    #@f
    const-wide/16 v6, 0x0

    #@11
    cmp-long v5, p3, v6

    #@13
    if-gtz v5, :cond_4

    #@15
    .line 328
    if-eqz v0, :cond_3

    #@17
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    #@1a
    move-result v5

    #@1b
    if-eqz v5, :cond_3

    #@1d
    .line 329
    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@1f
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@22
    goto :goto_0

    #@23
    .line 322
    .end local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v3    # "mode":I
    .restart local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_2
    const/4 v3, 0x1

    #@24
    .restart local v3    # "mode":I
    goto :goto_0

    #@25
    .line 331
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .restart local v0    # "h":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_3
    return-object v8

    #@26
    .line 332
    :cond_4
    invoke-static {v4, p1, v0, v3}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@29
    move-result-object v4

    #@2a
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@2d
    move-result v5

    #@2e
    if-eqz v5, :cond_0

    #@30
    .line 333
    invoke-virtual {p0, v4, p2, p3, p4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;ZJ)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@33
    move-result-object v1

    #@34
    .line 334
    .local v1, "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-ne v1, v4, :cond_5

    #@36
    .line 335
    invoke-virtual {p0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->clean(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)V

    #@39
    .line 336
    return-object v8

    #@3a
    .line 338
    :cond_5
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferStack;->head:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@3c
    if-eqz v0, :cond_6

    #@3e
    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@40
    if-ne v5, v4, :cond_6

    #@42
    .line 339
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@44
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@47
    .line 340
    :cond_6
    if-nez v3, :cond_7

    #@49
    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@4b
    :goto_1
    return-object v5

    #@4c
    :cond_7
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@4e
    goto :goto_1

    #@4f
    .line 342
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_8
    iget v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->mode:I

    #@51
    invoke-static {v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->isFulfilling(I)Z

    #@54
    move-result v5

    #@55
    if-nez v5, :cond_d

    #@57
    .line 343
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->isCancelled()Z

    #@5a
    move-result v5

    #@5b
    if-eqz v5, :cond_9

    #@5d
    .line 344
    iget-object v5, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@5f
    invoke-virtual {p0, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@62
    goto :goto_0

    #@63
    .line 345
    :cond_9
    or-int/lit8 v5, v3, 0x2

    #@65
    invoke-static {v4, p1, v0, v5}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->snode(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;I)Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@68
    move-result-object v4

    #@69
    .restart local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@6c
    move-result v5

    #@6d
    if-eqz v5, :cond_0

    #@6f
    .line 347
    :goto_2
    iget-object v1, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@71
    .line 348
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_a

    #@73
    .line 349
    invoke-virtual {p0, v4, v8}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@76
    .line 350
    const/4 v4, 0x0

    #@77
    .line 351
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    goto :goto_0

    #@78
    .line 353
    .local v4, "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_a
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@7a
    .line 354
    .local v2, "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v4}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@7d
    move-result v5

    #@7e
    if-eqz v5, :cond_c

    #@80
    .line 355
    invoke-virtual {p0, v4, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@83
    .line 356
    if-nez v3, :cond_b

    #@85
    iget-object v5, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@87
    :goto_3
    return-object v5

    #@88
    :cond_b
    iget-object v5, v4, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->item:Ljava/lang/Object;

    #@8a
    goto :goto_3

    #@8b
    .line 358
    :cond_c
    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@8e
    goto :goto_2

    #@8f
    .line 362
    .end local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    .end local v4    # "s":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    :cond_d
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@91
    .line 363
    .restart local v1    # "m":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    if-nez v1, :cond_e

    #@93
    .line 364
    invoke-virtual {p0, v0, v8}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@96
    goto/16 :goto_0

    #@98
    .line 366
    :cond_e
    iget-object v2, v1, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;

    #@9a
    .line 367
    .restart local v2    # "mn":Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;
    invoke-virtual {v1, v0}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->tryMatch(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@9d
    move-result v5

    #@9e
    if-eqz v5, :cond_f

    #@a0
    .line 368
    invoke-virtual {p0, v0, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack;->casHead(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@a3
    goto/16 :goto_0

    #@a5
    .line 370
    :cond_f
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;Ljava/util/concurrent/SynchronousQueue$TransferStack$SNode;)Z

    #@a8
    goto/16 :goto_0
.end method
