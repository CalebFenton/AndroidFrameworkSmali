.class final Ljava/util/concurrent/LinkedTransferQueue$Node;
.super Ljava/lang/Object;
.source "LinkedTransferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedTransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final itemOffset:J

.field private static final nextOffset:J

.field private static final serialVersionUID:J = -0x2ed9e3cc4e71ccaaL

.field private static final waiterOffset:J


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/LinkedTransferQueue$Node;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 514
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 515
    const-class v1, Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@8
    .line 516
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 517
    const-string/jumbo v3, "item"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 516
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    #@17
    .line 518
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 519
    const-string/jumbo v3, "next"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 518
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    #@26
    .line 520
    sget-object v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@28
    .line 521
    const-string/jumbo v3, "waiter"

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2e
    move-result-object v3

    #@2f
    .line 520
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@32
    move-result-wide v2

    #@33
    sput-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 418
    return-void

    #@36
    .line 522
    :catch_0
    move-exception v0

    #@37
    .line 523
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@39
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v2
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    #@0
    .prologue
    .line 438
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 439
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@5
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    #@7
    invoke-virtual {v0, p0, v2, v3, p1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@a
    .line 440
    iput-boolean p2, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@c
    .line 438
    return-void
.end method


# virtual methods
.method final cannotPrecede(Z)Z
    .locals 5
    .param p1, "haveData"    # Z

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 487
    iget-boolean v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@4
    .line 489
    .local v0, "d":Z
    if-eq v0, p1, :cond_1

    #@6
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@8
    .local v1, "x":Ljava/lang/Object;
    if-eq v1, p0, :cond_1

    #@a
    if-eqz v1, :cond_0

    #@c
    move v4, v2

    #@d
    :goto_0
    if-ne v4, v0, :cond_1

    #@f
    .end local v1    # "x":Ljava/lang/Object;
    :goto_1
    return v2

    #@10
    .restart local v1    # "x":Ljava/lang/Object;
    :cond_0
    move v4, v3

    #@11
    goto :goto_0

    #@12
    .end local v1    # "x":Ljava/lang/Object;
    :cond_1
    move v2, v3

    #@13
    goto :goto_1
.end method

.method final casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 431
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final casNext(Ljava/util/concurrent/LinkedTransferQueue$Node;Ljava/util/concurrent/LinkedTransferQueue$Node;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/LinkedTransferQueue$Node;
    .param p2, "val"    # Ljava/util/concurrent/LinkedTransferQueue$Node;

    #@0
    .prologue
    .line 426
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p2

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method final forgetContents()V
    .locals 4

    #@0
    .prologue
    .line 461
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->itemOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 462
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiterOffset:J

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@f
    .line 460
    return-void
.end method

.method final forgetNext()V
    .locals 4

    #@0
    .prologue
    .line 448
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    sget-object v0, Ljava/util/concurrent/LinkedTransferQueue$Node;->UNSAFE:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/LinkedTransferQueue$Node;->nextOffset:J

    #@4
    invoke-virtual {v0, p0, v2, v3, p0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    #@7
    .line 447
    return-void
.end method

.method final isMatched()Z
    .locals 5

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    .line 470
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@4
    .line 471
    .local v0, "x":Ljava/lang/Object;
    if-eq v0, p0, :cond_0

    #@6
    if-nez v0, :cond_1

    #@8
    move v1, v2

    #@9
    :goto_0
    iget-boolean v4, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@b
    if-ne v1, v4, :cond_2

    #@d
    :cond_0
    :goto_1
    return v2

    #@e
    :cond_1
    move v1, v3

    #@f
    goto :goto_0

    #@10
    :cond_2
    move v2, v3

    #@11
    goto :goto_1
.end method

.method final isUnmatchedRequest()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    const/4 v0, 0x0

    #@1
    .line 478
    iget-boolean v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->isData:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method final tryMatchData()Z
    .locals 2

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/LinkedTransferQueue$Node;, "Ljava/util/concurrent/LinkedTransferQueue<TE;>.Node;"
    const/4 v1, 0x0

    #@1
    .line 497
    iget-object v0, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->item:Ljava/lang/Object;

    #@3
    .line 498
    .local v0, "x":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@5
    if-eq v0, p0, :cond_0

    #@7
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/LinkedTransferQueue$Node;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 499
    iget-object v1, p0, Ljava/util/concurrent/LinkedTransferQueue$Node;->waiter:Ljava/lang/Thread;

    #@f
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@12
    .line 500
    const/4 v1, 0x1

    #@13
    return v1

    #@14
    .line 502
    :cond_0
    const/4 v1, 0x0

    #@15
    return v1
.end method
