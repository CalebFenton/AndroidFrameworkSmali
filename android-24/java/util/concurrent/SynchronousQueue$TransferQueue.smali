.class final Ljava/util/concurrent/SynchronousQueue$TransferQueue;
.super Ljava/util/concurrent/SynchronousQueue$Transferer;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TransferQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
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
.field private static final CLEANME:J

.field private static final HEAD:J

.field private static final TAIL:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 791
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v1

    #@4
    sput-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@6
    .line 797
    :try_start_0
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@8
    .line 798
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@a
    const-string/jumbo v3, "head"

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v2

    #@11
    .line 797
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

    #@17
    .line 799
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@19
    .line 800
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@1b
    const-string/jumbo v3, "tail"

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@21
    move-result-object v2

    #@22
    .line 799
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@25
    move-result-wide v2

    #@26
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    #@28
    .line 801
    sget-object v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@2a
    .line 802
    const-class v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@2c
    const-string/jumbo v3, "cleanMe"

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@32
    move-result-object v2

    #@33
    .line 801
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@36
    move-result-wide v2

    #@37
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@39
    .line 496
    return-void

    #@3a
    .line 803
    :catch_0
    move-exception v0

    #@3b
    .line 804
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@3d
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@40
    throw v1
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 576
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    #@3
    .line 577
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    #@a
    .line 578
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@c
    .line 579
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@e
    .line 576
    return-void
.end method


# virtual methods
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 587
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 588
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->HEAD:J

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
    .line 587
    if-eqz v0, :cond_0

    #@11
    .line 589
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@13
    .line 586
    :cond_0
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "t"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nt"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 596
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 597
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->TAIL:J

    #@8
    move-object v1, p0

    #@9
    move-object v4, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    .line 595
    :cond_0
    return-void
.end method

.method awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 8
    .param p1, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p3, "timed"    # Z
    .param p4, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;",
            "TE;ZJ)",
            "Ljava/lang/Object;"
        }
    .end annotation

    #@0
    .prologue
    .line 708
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    .local p2, "e":Ljava/lang/Object;, "TE;"
    if-eqz p3, :cond_2

    #@2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v6

    #@6
    add-long v0, v6, p4

    #@8
    .line 709
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v3

    #@c
    .line 710
    .local v3, "w":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@e
    iget-object v5, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@10
    if-ne v5, p1, :cond_4

    #@12
    .line 711
    if-eqz p3, :cond_3

    #@14
    sget v2, Ljava/util/concurrent/SynchronousQueue;->MAX_TIMED_SPINS:I

    #@16
    .line 714
    .local v2, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 715
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    #@1f
    .line 716
    :cond_1
    iget-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@21
    .line 717
    .local v4, "x":Ljava/lang/Object;
    if-eq v4, p2, :cond_5

    #@23
    .line 718
    return-object v4

    #@24
    .line 708
    .end local v0    # "deadline":J
    .end local v2    # "spins":I
    .end local v3    # "w":Ljava/lang/Thread;
    .end local v4    # "x":Ljava/lang/Object;
    :cond_2
    const-wide/16 v0, 0x0

    #@26
    .restart local v0    # "deadline":J
    goto :goto_0

    #@27
    .line 711
    .restart local v3    # "w":Ljava/lang/Thread;
    :cond_3
    sget v2, Ljava/util/concurrent/SynchronousQueue;->MAX_UNTIMED_SPINS:I

    #@29
    .restart local v2    # "spins":I
    goto :goto_1

    #@2a
    .line 712
    .end local v2    # "spins":I
    :cond_4
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "spins":I
    goto :goto_1

    #@2c
    .line 719
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_5
    if-eqz p3, :cond_6

    #@2e
    .line 720
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v6

    #@32
    sub-long p4, v0, v6

    #@34
    .line 721
    const-wide/16 v6, 0x0

    #@36
    cmp-long v5, p4, v6

    #@38
    if-gtz v5, :cond_6

    #@3a
    .line 722
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    #@3d
    goto :goto_1

    #@3e
    .line 726
    :cond_6
    if-lez v2, :cond_7

    #@40
    .line 727
    add-int/lit8 v2, v2, -0x1

    #@42
    goto :goto_1

    #@43
    .line 728
    :cond_7
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@45
    if-nez v5, :cond_8

    #@47
    .line 729
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@49
    goto :goto_1

    #@4a
    .line 730
    :cond_8
    if-nez p3, :cond_9

    #@4c
    .line 731
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@4f
    goto :goto_1

    #@50
    .line 732
    :cond_9
    const-wide/16 v6, 0x3e8

    #@52
    cmp-long v5, p4, v6

    #@54
    if-lez v5, :cond_0

    #@56
    .line 733
    invoke-static {p0, p4, p5}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    #@59
    goto :goto_1
.end method

.method casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z
    .locals 6
    .param p1, "cmp"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "val"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 604
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 605
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->U:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->CLEANME:J

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
    .line 604
    :goto_0
    return v0

    #@10
    :cond_0
    const/4 v0, 0x0

    #@11
    goto :goto_0
.end method

.method clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 10
    .param p1, "pred"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "s"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    const/4 v9, 0x0

    #@1
    .line 741
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@3
    .line 750
    :cond_0
    :goto_0
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@5
    if-ne v8, p2, :cond_a

    #@7
    .line 751
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@9
    .line 752
    .local v3, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@b
    .line 753
    .local v4, "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_1

    #@d
    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_1

    #@13
    .line 754
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@16
    goto :goto_0

    #@17
    .line 757
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@19
    .line 758
    .local v6, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_2

    #@1b
    .line 759
    return-void

    #@1c
    .line 760
    :cond_2
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@1e
    .line 761
    .local v7, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@20
    if-ne v6, v8, :cond_0

    #@22
    .line 763
    if-eqz v7, :cond_3

    #@24
    .line 764
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@27
    goto :goto_0

    #@28
    .line 767
    :cond_3
    if-eq p2, v6, :cond_5

    #@2a
    .line 768
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2c
    .line 769
    .local v5, "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_4

    #@2e
    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_5

    #@34
    .line 770
    :cond_4
    return-void

    #@35
    .line 772
    .end local v5    # "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@37
    .line 773
    .local v2, "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_9

    #@39
    .line 774
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@3b
    .line 776
    .local v0, "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_6

    #@3d
    .line 777
    if-ne v0, v2, :cond_8

    #@3f
    .line 783
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@42
    .line 784
    :cond_7
    if-ne v2, p1, :cond_0

    #@44
    .line 785
    return-void

    #@45
    .line 778
    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_6

    #@4b
    .line 779
    if-eq v0, v6, :cond_7

    #@4d
    .line 780
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@4f
    .local v1, "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_7

    #@51
    .line 781
    if-eq v1, v0, :cond_7

    #@53
    .line 782
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@56
    move-result v8

    #@57
    .line 776
    if-eqz v8, :cond_7

    #@59
    goto :goto_1

    #@5a
    .line 786
    .end local v0    # "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v1    # "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_9
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_0

    #@60
    .line 787
    return-void

    #@61
    .line 740
    .end local v2    # "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v3    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v4    # "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v6    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_a
    return-void
.end method

.method transfer(Ljava/lang/Object;ZJ)Ljava/lang/Object;
    .locals 13
    .param p2, "timed"    # Z
    .param p3, "nanos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZJ)TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 638
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    #@1
    .line 639
    .local v1, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_2

    #@3
    const/4 v7, 0x1

    #@4
    .line 642
    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .local v7, "isData":Z
    :cond_0
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@6
    .line 643
    .local v9, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@8
    .line 644
    .local v6, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_0

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 647
    if-eq v6, v9, :cond_1

    #@e
    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    #@10
    if-ne v0, v7, :cond_a

    #@12
    .line 648
    :cond_1
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@14
    .line 649
    .local v10, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@16
    if-ne v9, v0, :cond_0

    #@18
    .line 651
    if-eqz v10, :cond_3

    #@1a
    .line 652
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@1d
    goto :goto_0

    #@1e
    .line 639
    .end local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v7    # "isData":Z
    .end local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_2
    const/4 v7, 0x0

    #@1f
    .restart local v7    # "isData":Z
    goto :goto_0

    #@20
    .line 655
    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v6    # "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v9    # "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .restart local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_3
    if-eqz p2, :cond_4

    #@22
    const-wide/16 v2, 0x0

    #@24
    cmp-long v0, p3, v2

    #@26
    if-gtz v0, :cond_4

    #@28
    .line 656
    const/4 v0, 0x0

    #@29
    return-object v0

    #@2a
    .line 657
    :cond_4
    if-nez v1, :cond_5

    #@2c
    .line 658
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2e
    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    #@31
    .line 659
    :cond_5
    const/4 v0, 0x0

    #@32
    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 662
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@3b
    move-object v0, p0

    #@3c
    move-object v2, p1

    #@3d
    move v3, p2

    #@3e
    move-wide/from16 v4, p3

    #@40
    .line 663
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@43
    move-result-object v11

    #@44
    .line 664
    .local v11, "x":Ljava/lang/Object;
    if-ne v11, v1, :cond_6

    #@46
    .line 665
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@49
    .line 666
    const/4 v0, 0x0

    #@4a
    return-object v0

    #@4b
    .line 669
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_8

    #@51
    .line 670
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@54
    .line 671
    if-eqz v11, :cond_7

    #@56
    .line 672
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@58
    .line 673
    :cond_7
    const/4 v0, 0x0

    #@59
    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@5b
    .line 675
    :cond_8
    if-eqz v11, :cond_9

    #@5d
    .end local v11    # "x":Ljava/lang/Object;
    :goto_1
    return-object v11

    #@5e
    .restart local v11    # "x":Ljava/lang/Object;
    :cond_9
    move-object v11, p1

    #@5f
    goto :goto_1

    #@60
    .line 678
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11    # "x":Ljava/lang/Object;
    :cond_a
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@62
    .line 679
    .local v8, "m":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@64
    if-ne v9, v0, :cond_0

    #@66
    if-eqz v8, :cond_0

    #@68
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@6a
    if-ne v6, v0, :cond_0

    #@6c
    .line 682
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@6e
    .line 683
    .restart local v11    # "x":Ljava/lang/Object;
    if-eqz v11, :cond_c

    #@70
    const/4 v0, 0x1

    #@71
    :goto_2
    if-eq v7, v0, :cond_b

    #@73
    .line 684
    if-ne v11, v8, :cond_d

    #@75
    .line 686
    :cond_b
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@78
    goto :goto_0

    #@79
    .line 683
    :cond_c
    const/4 v0, 0x0

    #@7a
    goto :goto_2

    #@7b
    .line 685
    :cond_d
    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_b

    #@81
    .line 690
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@84
    .line 691
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@86
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@89
    .line 692
    if-eqz v11, :cond_e

    #@8b
    .end local v11    # "x":Ljava/lang/Object;
    :goto_3
    return-object v11

    #@8c
    .restart local v11    # "x":Ljava/lang/Object;
    :cond_e
    move-object v11, p1

    #@8d
    goto :goto_3
.end method
