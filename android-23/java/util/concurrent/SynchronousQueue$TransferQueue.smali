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
.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final cleanMeOffset:J

.field private static final headOffset:J

.field private static final tailOffset:J


# instance fields
.field volatile transient cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

.field volatile transient tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    .line 798
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@3
    move-result-object v2

    #@4
    sput-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    .line 799
    const-class v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue;

    #@8
    .line 800
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@a
    .line 801
    const-string/jumbo v3, "head"

    #@d
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@10
    move-result-object v3

    #@11
    .line 800
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@14
    move-result-wide v2

    #@15
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

    #@17
    .line 802
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@19
    .line 803
    const-string/jumbo v3, "tail"

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1f
    move-result-object v3

    #@20
    .line 802
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@23
    move-result-wide v2

    #@24
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    #@26
    .line 804
    sget-object v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@28
    .line 805
    const-string/jumbo v3, "cleanMe"

    #@2b
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@2e
    move-result-object v3

    #@2f
    .line 804
    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@32
    move-result-wide v2

    #@33
    sput-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 496
    return-void

    #@36
    .line 806
    :catch_0
    move-exception v0

    #@37
    .line 807
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    #@39
    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3c
    throw v2
.end method

.method constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 578
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$Transferer;-><init>()V

    #@3
    .line 579
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x0

    #@7
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    #@a
    .line 580
    .local v0, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@c
    .line 581
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@e
    .line 578
    return-void
.end method


# virtual methods
.method advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "h"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nh"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 589
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 590
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->headOffset:J

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
    .line 589
    if-eqz v0, :cond_0

    #@11
    .line 591
    iput-object p1, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@13
    .line 588
    :cond_0
    return-void
.end method

.method advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V
    .locals 6
    .param p1, "t"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .param p2, "nt"    # Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@0
    .prologue
    .line 598
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 599
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tailOffset:J

    #@8
    move-object v1, p0

    #@9
    move-object v4, p1

    #@a
    move-object v5, p2

    #@b
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapObject(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    #@e
    .line 597
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
    .line 710
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
    .line 711
    .local v0, "deadline":J
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b
    move-result-object v3

    #@c
    .line 712
    .local v3, "w":Ljava/lang/Thread;
    iget-object v5, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@e
    iget-object v5, v5, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@10
    if-ne v5, p1, :cond_4

    #@12
    .line 713
    if-eqz p3, :cond_3

    #@14
    sget v2, Ljava/util/concurrent/SynchronousQueue;->maxTimedSpins:I

    #@16
    .line 715
    .local v2, "spins":I
    :cond_0
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_1

    #@1c
    .line 716
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    #@1f
    .line 717
    :cond_1
    iget-object v4, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@21
    .line 718
    .local v4, "x":Ljava/lang/Object;
    if-eq v4, p2, :cond_5

    #@23
    .line 719
    return-object v4

    #@24
    .line 710
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
    .line 713
    .restart local v3    # "w":Ljava/lang/Thread;
    :cond_3
    sget v2, Ljava/util/concurrent/SynchronousQueue;->maxUntimedSpins:I

    #@29
    .restart local v2    # "spins":I
    goto :goto_1

    #@2a
    .end local v2    # "spins":I
    :cond_4
    const/4 v2, 0x0

    #@2b
    .restart local v2    # "spins":I
    goto :goto_1

    #@2c
    .line 720
    .restart local v4    # "x":Ljava/lang/Object;
    :cond_5
    if-eqz p3, :cond_6

    #@2e
    .line 721
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@31
    move-result-wide v6

    #@32
    sub-long p4, v0, v6

    #@34
    .line 722
    const-wide/16 v6, 0x0

    #@36
    cmp-long v5, p4, v6

    #@38
    if-gtz v5, :cond_6

    #@3a
    .line 723
    invoke-virtual {p1, p2}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->tryCancel(Ljava/lang/Object;)V

    #@3d
    goto :goto_1

    #@3e
    .line 727
    :cond_6
    if-lez v2, :cond_7

    #@40
    .line 728
    add-int/lit8 v2, v2, -0x1

    #@42
    goto :goto_1

    #@43
    .line 729
    :cond_7
    iget-object v5, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@45
    if-nez v5, :cond_8

    #@47
    .line 730
    iput-object v3, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@49
    goto :goto_1

    #@4a
    .line 731
    :cond_8
    if-nez p3, :cond_9

    #@4c
    .line 732
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@4f
    goto :goto_1

    #@50
    .line 733
    :cond_9
    const-wide/16 v6, 0x3e8

    #@52
    cmp-long v5, p4, v6

    #@54
    if-lez v5, :cond_0

    #@56
    .line 734
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
    .line 606
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 607
    sget-object v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->UNSAFE:Lsun/misc/Unsafe;

    #@6
    sget-wide v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMeOffset:J

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
    .line 606
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
    .line 742
    iput-object v9, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@3
    .line 751
    :cond_0
    :goto_0
    iget-object v8, p1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@5
    if-ne v8, p2, :cond_a

    #@7
    .line 752
    iget-object v3, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@9
    .line 753
    .local v3, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v4, v3, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@b
    .line 754
    .local v4, "hn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v4, :cond_1

    #@d
    invoke-virtual {v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    #@10
    move-result v8

    #@11
    if-eqz v8, :cond_1

    #@13
    .line 755
    invoke-virtual {p0, v3, v4}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@16
    goto :goto_0

    #@17
    .line 758
    :cond_1
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@19
    .line 759
    .local v6, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-ne v6, v3, :cond_2

    #@1b
    .line 760
    return-void

    #@1c
    .line 761
    :cond_2
    iget-object v7, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@1e
    .line 762
    .local v7, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v8, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@20
    if-ne v6, v8, :cond_0

    #@22
    .line 764
    if-eqz v7, :cond_3

    #@24
    .line 765
    invoke-virtual {p0, v6, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@27
    goto :goto_0

    #@28
    .line 768
    :cond_3
    if-eq p2, v6, :cond_5

    #@2a
    .line 769
    iget-object v5, p2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2c
    .line 770
    .local v5, "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eq v5, p2, :cond_4

    #@2e
    invoke-virtual {p1, p2, v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_5

    #@34
    .line 771
    :cond_4
    return-void

    #@35
    .line 773
    .end local v5    # "sn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_5
    iget-object v2, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->cleanMe:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@37
    .line 774
    .local v2, "dp":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v2, :cond_9

    #@39
    .line 775
    iget-object v0, v2, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@3b
    .line 777
    .local v0, "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v0, :cond_6

    #@3d
    .line 778
    if-ne v0, v2, :cond_8

    #@3f
    .line 784
    :cond_6
    :goto_1
    invoke-virtual {p0, v2, v9}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@42
    .line 785
    :cond_7
    if-ne v2, p1, :cond_0

    #@44
    .line 786
    return-void

    #@45
    .line 779
    :cond_8
    invoke-virtual {v0}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isCancelled()Z

    #@48
    move-result v8

    #@49
    if-eqz v8, :cond_6

    #@4b
    .line 780
    if-eq v0, v6, :cond_7

    #@4d
    .line 781
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@4f
    .local v1, "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v1, :cond_7

    #@51
    .line 782
    if-eq v1, v0, :cond_7

    #@53
    .line 783
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@56
    move-result v8

    #@57
    .line 777
    if-eqz v8, :cond_7

    #@59
    goto :goto_1

    #@5a
    .line 787
    .end local v0    # "d":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v1    # "dn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    :cond_9
    invoke-virtual {p0, v9, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->casCleanMe(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@5d
    move-result v8

    #@5e
    if-eqz v8, :cond_0

    #@60
    .line 788
    return-void

    #@61
    .line 741
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
    .line 640
    .local p0, "this":Ljava/util/concurrent/SynchronousQueue$TransferQueue;, "Ljava/util/concurrent/SynchronousQueue<TE;>.TransferQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    #@1
    .line 641
    .local v1, "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz p1, :cond_2

    #@3
    const/4 v7, 0x1

    #@4
    .line 644
    .end local v1    # "s":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .local v7, "isData":Z
    :cond_0
    :goto_0
    iget-object v9, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@6
    .line 645
    .local v9, "t":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v6, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->head:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@8
    .line 646
    .local v6, "h":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    if-eqz v9, :cond_0

    #@a
    if-eqz v6, :cond_0

    #@c
    .line 649
    if-eq v6, v9, :cond_1

    #@e
    iget-boolean v0, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isData:Z

    #@10
    if-ne v0, v7, :cond_a

    #@12
    .line 650
    :cond_1
    iget-object v10, v9, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@14
    .line 651
    .local v10, "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->tail:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@16
    if-ne v9, v0, :cond_0

    #@18
    .line 653
    if-eqz v10, :cond_3

    #@1a
    .line 654
    invoke-virtual {p0, v9, v10}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceTail(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@1d
    goto :goto_0

    #@1e
    .line 641
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
    .line 657
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
    .line 658
    const/4 v0, 0x0

    #@29
    return-object v0

    #@2a
    .line 659
    :cond_4
    if-nez v1, :cond_5

    #@2c
    .line 660
    new-instance v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@2e
    invoke-direct {v1, p1, v7}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;-><init>(Ljava/lang/Object;Z)V

    #@31
    .line 661
    :cond_5
    const/4 v0, 0x0

    #@32
    invoke-virtual {v9, v0, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casNext(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_0

    #@38
    .line 664
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
    .line 665
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->awaitFulfill(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/lang/Object;ZJ)Ljava/lang/Object;

    #@43
    move-result-object v11

    #@44
    .line 666
    .local v11, "x":Ljava/lang/Object;
    if-ne v11, v1, :cond_6

    #@46
    .line 667
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->clean(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@49
    .line 668
    const/4 v0, 0x0

    #@4a
    return-object v0

    #@4b
    .line 671
    :cond_6
    invoke-virtual {v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->isOffList()Z

    #@4e
    move-result v0

    #@4f
    if-nez v0, :cond_8

    #@51
    .line 672
    invoke-virtual {p0, v9, v1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@54
    .line 673
    if-eqz v11, :cond_7

    #@56
    .line 674
    iput-object v1, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@58
    .line 675
    :cond_7
    const/4 v0, 0x0

    #@59
    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@5b
    .line 677
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
    .line 680
    .end local v10    # "tn":Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;
    .end local v11    # "x":Ljava/lang/Object;
    :cond_a
    iget-object v8, v6, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->next:Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;

    #@62
    .line 681
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
    .line 684
    iget-object v11, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->item:Ljava/lang/Object;

    #@6e
    .line 685
    .restart local v11    # "x":Ljava/lang/Object;
    if-eqz v11, :cond_c

    #@70
    const/4 v0, 0x1

    #@71
    :goto_2
    if-eq v7, v0, :cond_b

    #@73
    .line 686
    if-ne v11, v8, :cond_d

    #@75
    .line 688
    :cond_b
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@78
    goto :goto_0

    #@79
    .line 685
    :cond_c
    const/4 v0, 0x0

    #@7a
    goto :goto_2

    #@7b
    .line 687
    :cond_d
    invoke-virtual {v8, v11, p1}, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->casItem(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@7e
    move-result v0

    #@7f
    if-eqz v0, :cond_b

    #@81
    .line 692
    invoke-virtual {p0, v6, v8}, Ljava/util/concurrent/SynchronousQueue$TransferQueue;->advanceHead(Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;)V

    #@84
    .line 693
    iget-object v0, v8, Ljava/util/concurrent/SynchronousQueue$TransferQueue$QNode;->waiter:Ljava/lang/Thread;

    #@86
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@89
    .line 694
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
