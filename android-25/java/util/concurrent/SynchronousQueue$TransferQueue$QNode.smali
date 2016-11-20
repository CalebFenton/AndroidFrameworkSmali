.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
.super Ljava/lang/Object;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "QNode"
.end annotation


# static fields
.field private static final ITEM:J

.field private static final NEXT:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field final isData:Z

.field volatile item:Ljava/lang/Object;

.field volatile next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 549
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@6
    .line 555
    :try_start_0
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@8
    .line 556
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@a
    const-string/jumbo v3, "item"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 555
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

    #@17
    .line 557
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@19
    .line 558
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@1b
    const-string/jumbo v3, "next"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v2

    #@22
    .line 557
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->NEXT:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    .line 507
    return-void

    #@29
    .line 559
    :catch_0
    move-exception v0

    #@2a
    .line 560
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@2c
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2f
    throw v1
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "isData"    # Z

    #@0
    .prologue
    .line 513
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 514
    iput-object p1, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@5
    .line 515
    iput-boolean p2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    #@7
    .line 513
    return-void
.end method


# virtual methods
.method casItem(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 524
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 525
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

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
    .line 524
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 519
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 520
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->NEXT:J

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
    .line 519
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method isCancelled()Z
    .locals 1

    #@0
    .prologue
    .line 536
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method isOffList()Z
    .locals 1

    #@0
    .prologue
    .line 545
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method tryCancel(Ljava/lang/Object;)V
    .locals 6
    .param p1, "cmp"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 532
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>.QNode;"
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->ITEM:J

    #@4
    move-object v1, p0

    #@5
    move-object v4, p1

    #@6
    move-object v5, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@a
    .line 531
    return-void
.end method
